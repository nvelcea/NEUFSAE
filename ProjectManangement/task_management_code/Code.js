// Code file for the NER "Task Management" spreadsheets (aka poor man's Jira)

// updateTask : n/a -> n/a
// Update the task most recently edited to perform actions based on the edit made
// Triggered by onEdit trigger
/* Actions:
 *  Move task from Main Tasks to Backlog -> based on "Status"
 *  Move task from Main Tasks to Archived -> based on "Status"
 *  Move task from Backlog to Main Tasks -> based on "Status"
 *  Move task from Archived to Main Tasks -> based on "Status"
 * Auto-Populates:
 *  Date Completed -> When marked done from In Progress
 *  Date Assigned -> When pre-assigned and marked In Backlog from In progress
 *                -> When assigned to someone new while In Progress
 */
function updateTask() {
  var spreadsheet = SpreadsheetApp.getActiveSpreadsheet();
  var sheet = spreadsheet.getActiveSheet();
  var sheetName = sheet.getName();
  var cell = sheet.getActiveCell();
  var cellValue = cell.getValue();
  var cellRow = cell.getRow();
  var cellCol = cell.getColumn();
  var entireRow = sheet.getRange(cellRow, cellCol, 1, sheet.getLastColumn());
  var rowData = entireRow.getValues()[0];
  var today = Utilities.formatDate(new Date(), "GMT+1", "MM/dd/yyyy");
  
  if (sheetName == "Main Tasks") {
    if (cellCol == 1 && cellValue == "In Backlog") { // edited "Status" dropdown to "In Backlog"
      rowData.splice(3, 1); // remove date assigned
      rowData.pop(); // remove notes from meeting
      moveRow(cellRow, rowData, sheet, spreadsheet.getSheetByName("Backlog"));
    } else if (cellCol == 1 && cellValue == "Done") { // edited "Status" dropdown to "Done"
      rowData.push(today); // add completion date as today
      moveRow(cellRow, rowData, sheet, spreadsheet.getSheetByName("Archived"));
    } else if (cellCol == 3) { // edited who assignee is
      sheet.getRange(cellRow, cellCol + 1, 1).setValue(today); // add assigned date as today
    }
  } else if (sheetName == "Backlog") {
    if (cellCol == 1 && cellValue == "In Progress") { // edited "Status" dropdown to "In Progress"
      if (rowData[2] != "") { // already assigned to someone
        rowData.splice(3, 0, today); // add assigned date as today
      } else {
        rowData.splice(3, 0, ""); // add element for date assigned column
      }
      rowData.push(""); // add element for notes section
      moveRow(cellRow, rowData, sheet, spreadsheet.getSheetByName("Main Tasks"));
    }
  } else if (sheetName == "Archived") {
    if (cellCol == 1 && cellValue == "In Progress") { // edited "Status" dropdown to "In Progress"
      rowData.pop(); // remove completion date
      moveRow(cellRow, rowData, sheet, spreadsheet.getSheetByName("Main Tasks"));
    }
  }
}

// moveRow : Range Array[] Sheet Sheet -> n/a
// Move the given row to the end of the sheet specified by spreadsheet and sheet's name
function moveRow(rowIdx, rowData, source, dest) {
  source.deleteRow(rowIdx); // delete the entire row
  dest.appendRow(rowData); // add the row data to the specified sheet
}