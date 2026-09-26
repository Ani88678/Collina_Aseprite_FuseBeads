-- ============================================================================
-- MARD Palette v4.2 (English Version - UI Optimized)
-- Features: 221/273 Mode, Convert, Dynamic Highlight, Label Pixels, Sleek UI
-- ============================================================================
local MARD = {}

MARD.COLORS = {
  { id = "A1", r = 250, g = 244, b = 200, cat = "A" }, { id = "A2", r = 255, g = 255, b = 213, cat = "A" }, { id = "A3", r = 254, g = 255, b = 139, cat = "A" }, { id = "A4", r = 251, g = 237, b = 86, cat = "A" }, { id = "A5", r = 244, g = 215, b = 56, cat = "A" }, { id = "A6", r = 254, g = 172, b = 76, cat = "A" }, { id = "A7", r = 254, g = 139, b = 76, cat = "A" }, { id = "A8", r = 255, g = 218, b = 69, cat = "A" }, { id = "A9", r = 255, g = 153, b = 91, cat = "A" }, { id = "A10", r = 247, g = 124, b = 49, cat = "A" }, { id = "A11", r = 255, g = 221, b = 153, cat = "A" }, { id = "A12", r = 254, g = 159, b = 114, cat = "A" }, { id = "A13", r = 255, g = 195, b = 101, cat = "A" }, { id = "A14", r = 253, g = 84, b = 61, cat = "A" }, { id = "A15", r = 255, g = 243, b = 101, cat = "A" }, { id = "A16", r = 255, g = 255, b = 159, cat = "A" }, { id = "A17", r = 255, g = 227, b = 110, cat = "A" }, { id = "A18", r = 254, g = 190, b = 125, cat = "A" }, { id = "A19", r = 253, g = 124, b = 114, cat = "A" }, { id = "A20", r = 255, g = 213, b = 104, cat = "A" }, { id = "A21", r = 255, g = 227, b = 149, cat = "A" }, { id = "A22", r = 244, g = 245, b = 125, cat = "A" }, { id = "A23", r = 230, g = 201, b = 183, cat = "A" }, { id = "A24", r = 247, g = 248, b = 162, cat = "A" }, { id = "A25", r = 255, g = 214, b = 125, cat = "A" }, { id = "A26", r = 255, g = 200, b = 48, cat = "A" },
  { id = "B1", r = 230, g = 238, b = 49, cat = "B" }, { id = "B2", r = 99, g = 243, b = 71, cat = "B" }, { id = "B3", r = 158, g = 247, b = 128, cat = "B" }, { id = "B4", r = 93, g = 224, b = 53, cat = "B" }, { id = "B5", r = 53, g = 227, b = 82, cat = "B" }, { id = "B6", r = 101, g = 226, b = 166, cat = "B" }, { id = "B7", r = 61, g = 175, b = 128, cat = "B" }, { id = "B8", r = 28, g = 156, b = 79, cat = "B" }, { id = "B9", r = 39, g = 82, b = 58, cat = "B" }, { id = "B10", r = 149, g = 211, b = 194, cat = "B" }, { id = "B11", r = 93, g = 114, b = 42, cat = "B" }, { id = "B12", r = 22, g = 111, b = 65, cat = "B" }, { id = "B13", r = 202, g = 235, b = 123, cat = "B" }, { id = "B14", r = 173, g = 233, b = 70, cat = "B" }, { id = "B15", r = 46, g = 81, b = 50, cat = "B" }, { id = "B16", r = 197, g = 237, b = 156, cat = "B" }, { id = "B17", r = 155, g = 177, b = 58, cat = "B" }, { id = "B18", r = 230, g = 238, b = 73, cat = "B" }, { id = "B19", r = 36, g = 184, b = 140, cat = "B" }, { id = "B20", r = 194, g = 240, b = 204, cat = "B" }, { id = "B21", r = 21, g = 106, b = 107, cat = "B" }, { id = "B22", r = 11, g = 60, b = 67, cat = "B" }, { id = "B23", r = 48, g = 58, b = 33, cat = "B" }, { id = "B24", r = 238, g = 252, b = 165, cat = "B" }, { id = "B25", r = 78, g = 132, b = 109, cat = "B" }, { id = "B26", r = 141, g = 122, b = 53, cat = "B" }, { id = "B27", r = 204, g = 225, b = 175, cat = "B" }, { id = "B28", r = 158, g = 229, b = 185, cat = "B" }, { id = "B29", r = 197, g = 226, b = 84, cat = "B" }, { id = "B30", r = 226, g = 252, b = 177, cat = "B" }, { id = "B31", r = 176, g = 231, b = 146, cat = "B" }, { id = "B32", r = 156, g = 171, b = 90, cat = "B" },
  { id = "C1", r = 232, g = 255, b = 231, cat = "C" }, { id = "C2", r = 169, g = 249, b = 252, cat = "C" }, { id = "C3", r = 160, g = 226, b = 251, cat = "C" }, { id = "C4", r = 65, g = 204, b = 255, cat = "C" }, { id = "C5", r = 1, g = 172, b = 235, cat = "C" }, { id = "C6", r = 80, g = 170, b = 240, cat = "C" }, { id = "C7", r = 54, g = 119, b = 210, cat = "C" }, { id = "C8", r = 15, g = 84, b = 192, cat = "C" }, { id = "C9", r = 50, g = 75, b = 202, cat = "C" }, { id = "C10", r = 62, g = 188, b = 226, cat = "C" }, { id = "C11", r = 40, g = 221, b = 222, cat = "C" }, { id = "C12", r = 28, g = 51, b = 77, cat = "C" }, { id = "C13", r = 205, g = 232, b = 255, cat = "C" }, { id = "C14", r = 213, g = 253, b = 255, cat = "C" }, { id = "C15", r = 34, g = 196, b = 198, cat = "C" }, { id = "C16", r = 21, g = 87, b = 168, cat = "C" }, { id = "C17", r = 4, g = 209, b = 246, cat = "C" }, { id = "C18", r = 29, g = 51, b = 68, cat = "C" }, { id = "C19", r = 24, g = 135, b = 162, cat = "C" }, { id = "C20", r = 23, g = 109, b = 175, cat = "C" }, { id = "C21", r = 190, g = 221, b = 255, cat = "C" }, { id = "C22", r = 103, g = 180, b = 190, cat = "C" }, { id = "C23", r = 200, g = 226, b = 255, cat = "C" }, { id = "C24", r = 124, g = 196, b = 255, cat = "C" }, { id = "C25", r = 169, g = 229, b = 229, cat = "C" }, { id = "C26", r = 60, g = 174, b = 216, cat = "C" }, { id = "C27", r = 211, g = 223, b = 250, cat = "C" }, { id = "C28", r = 187, g = 207, b = 237, cat = "C" }, { id = "C29", r = 52, g = 72, b = 142, cat = "C" },
  { id = "D1", r = 174, g = 180, b = 242, cat = "D" }, { id = "D2", r = 133, g = 142, b = 221, cat = "D" }, { id = "D3", r = 47, g = 84, b = 175, cat = "D" }, { id = "D4", r = 24, g = 42, b = 132, cat = "D" }, { id = "D5", r = 184, g = 67, b = 197, cat = "D" }, { id = "D6", r = 172, g = 123, b = 222, cat = "D" }, { id = "D7", r = 136, g = 84, b = 179, cat = "D" }, { id = "D8", r = 226, g = 211, b = 255, cat = "D" }, { id = "D9", r = 213, g = 185, b = 248, cat = "D" }, { id = "D10", r = 54, g = 24, b = 81, cat = "D" }, { id = "D11", r = 185, g = 186, b = 225, cat = "D" }, { id = "D12", r = 222, g = 154, b = 212, cat = "D" }, { id = "D13", r = 185, g = 0, b = 149, cat = "D" }, { id = "D14", r = 139, g = 39, b = 155, cat = "D" }, { id = "D15", r = 47, g = 31, b = 144, cat = "D" }, { id = "D16", r = 227, g = 225, b = 238, cat = "D" }, { id = "D17", r = 196, g = 212, b = 246, cat = "D" }, { id = "D18", r = 164, g = 94, b = 199, cat = "D" }, { id = "D19", r = 216, g = 195, b = 215, cat = "D" }, { id = "D20", r = 156, g = 50, b = 178, cat = "D" }, { id = "D21", r = 154, g = 0, b = 155, cat = "D" }, { id = "D22", r = 51, g = 58, b = 149, cat = "D" }, { id = "D23", r = 235, g = 218, b = 252, cat = "D" }, { id = "D24", r = 119, g = 134, b = 229, cat = "D" }, { id = "D25", r = 73, g = 79, b = 199, cat = "D" }, { id = "D26", r = 223, g = 194, b = 248, cat = "D" },
  { id = "E1", r = 253, g = 211, b = 204, cat = "E" }, { id = "E2", r = 254, g = 192, b = 223, cat = "E" }, { id = "E3", r = 255, g = 183, b = 231, cat = "E" }, { id = "E4", r = 232, g = 100, b = 158, cat = "E" }, { id = "E5", r = 245, g = 81, b = 162, cat = "E" }, { id = "E6", r = 241, g = 61, b = 116, cat = "E" }, { id = "E7", r = 198, g = 52, b = 120, cat = "E" }, { id = "E8", r = 255, g = 219, b = 233, cat = "E" }, { id = "E9", r = 233, g = 112, b = 204, cat = "E" }, { id = "E10", r = 211, g = 55, b = 147, cat = "E" }, { id = "E11", r = 252, g = 221, b = 210, cat = "E" }, { id = "E12", r = 247, g = 143, b = 195, cat = "E" }, { id = "E13", r = 181, g = 0, b = 109, cat = "E" }, { id = "E14", r = 255, g = 209, b = 186, cat = "E" }, { id = "E15", r = 248, g = 199, b = 201, cat = "E" }, { id = "E16", r = 255, g = 243, b = 235, cat = "E" }, { id = "E17", r = 255, g = 226, b = 234, cat = "E" }, { id = "E18", r = 255, g = 199, b = 219, cat = "E" }, { id = "E19", r = 254, g = 186, b = 213, cat = "E" }, { id = "E20", r = 216, g = 199, b = 209, cat = "E" }, { id = "E21", r = 189, g = 157, b = 161, cat = "E" }, { id = "E22", r = 183, g = 133, b = 161, cat = "E" }, { id = "E23", r = 147, g = 122, b = 141, cat = "E" }, { id = "E24", r = 225, g = 188, b = 232, cat = "E" },
  { id = "F1", r = 253, g = 149, b = 123, cat = "F" }, { id = "F2", r = 252, g = 61, b = 70, cat = "F" }, { id = "F3", r = 247, g = 73, b = 65, cat = "F" }, { id = "F4", r = 252, g = 40, b = 60, cat = "F" }, { id = "F5", r = 231, g = 0, b = 47, cat = "F" }, { id = "F6", r = 148, g = 54, b = 48, cat = "F" }, { id = "F7", r = 151, g = 25, b = 55, cat = "F" }, { id = "F8", r = 188, g = 0, b = 40, cat = "F" }, { id = "F9", r = 226, g = 103, b = 122, cat = "F" }, { id = "F10", r = 138, g = 69, b = 38, cat = "F" }, { id = "F11", r = 90, g = 33, b = 33, cat = "F" }, { id = "F12", r = 253, g = 78, b = 106, cat = "F" }, { id = "F13", r = 243, g = 87, b = 68, cat = "F" }, { id = "F14", r = 255, g = 169, b = 173, cat = "F" }, { id = "F15", r = 211, g = 0, b = 34, cat = "F" }, { id = "F16", r = 254, g = 194, b = 166, cat = "F" }, { id = "F17", r = 230, g = 156, b = 121, cat = "F" }, { id = "F18", r = 211, g = 124, b = 70, cat = "F" }, { id = "F19", r = 193, g = 68, b = 74, cat = "F" }, { id = "F20", r = 205, g = 147, b = 145, cat = "F" }, { id = "F21", r = 247, g = 180, b = 198, cat = "F" }, { id = "F22", r = 253, g = 192, b = 208, cat = "F" }, { id = "F23", r = 246, g = 126, b = 102, cat = "F" }, { id = "F24", r = 230, g = 152, b = 170, cat = "F" }, { id = "F25", r = 229, g = 75, b = 79, cat = "F" },
  { id = "G1", r = 255, g = 226, b = 206, cat = "G" }, { id = "G2", r = 255, g = 196, b = 170, cat = "G" }, { id = "G3", r = 244, g = 195, b = 165, cat = "G" }, { id = "G4", r = 225, g = 179, b = 131, cat = "G" }, { id = "G5", r = 237, g = 176, b = 69, cat = "G" }, { id = "G6", r = 233, g = 156, b = 23, cat = "G" }, { id = "G7", r = 157, g = 91, b = 62, cat = "G" }, { id = "G8", r = 117, g = 56, b = 50, cat = "G" }, { id = "G9", r = 230, g = 180, b = 131, cat = "G" }, { id = "G10", r = 217, g = 140, b = 57, cat = "G" }, { id = "G11", r = 224, g = 197, b = 147, cat = "G" }, { id = "G12", r = 255, g = 200, b = 144, cat = "G" }, { id = "G13", r = 183, g = 113, b = 74, cat = "G" }, { id = "G14", r = 141, g = 97, b = 76, cat = "G" }, { id = "G15", r = 252, g = 249, b = 224, cat = "G" }, { id = "G16", r = 242, g = 217, b = 186, cat = "G" }, { id = "G17", r = 120, g = 82, b = 75, cat = "G" }, { id = "G18", r = 255, g = 228, b = 204, cat = "G" }, { id = "G19", r = 224, g = 121, b = 53, cat = "G" }, { id = "G20", r = 169, g = 64, b = 35, cat = "G" }, { id = "G21", r = 184, g = 133, b = 88, cat = "G" },
  { id = "H1", r = 253, g = 251, b = 255, cat = "H" }, { id = "H2", r = 254, g = 255, b = 255, cat = "H" }, { id = "H3", r = 182, g = 177, b = 186, cat = "H" }, { id = "H4", r = 137, g = 133, b = 140, cat = "H" }, { id = "H5", r = 72, g = 70, b = 78, cat = "H" }, { id = "H6", r = 47, g = 43, b = 47, cat = "H" }, { id = "H7", r = 0, g = 0, b = 0, cat = "H" }, { id = "H8", r = 231, g = 214, b = 219, cat = "H" }, { id = "H9", r = 237, g = 237, b = 237, cat = "H" }, { id = "H10", r = 238, g = 233, b = 234, cat = "H" }, { id = "H11", r = 206, g = 205, b = 213, cat = "H" }, { id = "H12", r = 255, g = 245, b = 237, cat = "H" }, { id = "H13", r = 245, g = 236, b = 210, cat = "H" }, { id = "H14", r = 207, g = 215, b = 211, cat = "H" }, { id = "H15", r = 152, g = 166, b = 168, cat = "H" }, { id = "H16", r = 29, g = 20, b = 20, cat = "H" }, { id = "H17", r = 241, g = 237, b = 237, cat = "H" }, { id = "H18", r = 255, g = 253, b = 240, cat = "H" }, { id = "H19", r = 246, g = 239, b = 226, cat = "H" }, { id = "H20", r = 148, g = 159, b = 163, cat = "H" }, { id = "H21", r = 255, g = 251, b = 225, cat = "H" }, { id = "H22", r = 202, g = 202, b = 212, cat = "H" }, { id = "H23", r = 154, g = 157, b = 148, cat = "H" },
  { id = "M1", r = 188, g = 198, b = 184, cat = "M" }, { id = "M2", r = 138, g = 163, b = 134, cat = "M" }, { id = "M3", r = 105, g = 125, b = 128, cat = "M" }, { id = "M4", r = 227, g = 210, b = 188, cat = "M" }, { id = "M5", r = 208, g = 204, b = 170, cat = "M" }, { id = "M6", r = 176, g = 167, b = 130, cat = "M" }, { id = "M7", r = 180, g = 164, b = 151, cat = "M" }, { id = "M8", r = 179, g = 130, b = 129, cat = "M" }, { id = "M9", r = 165, g = 135, b = 103, cat = "M" }, { id = "M10", r = 197, g = 178, b = 188, cat = "M" }, { id = "M11", r = 159, g = 117, b = 148, cat = "M" }, { id = "M12", r = 100, g = 71, b = 73, cat = "M" }, { id = "M13", r = 209, g = 144, b = 102, cat = "M" }, { id = "M14", r = 199, g = 115, b = 98, cat = "M" }, { id = "M15", r = 117, g = 125, b = 120, cat = "M" },
  { id = "P1", r = 252, g = 247, b = 248, cat = "P" }, { id = "P2", r = 176, g = 169, b = 172, cat = "P" }, { id = "P3", r = 175, g = 220, b = 171, cat = "P" }, { id = "P4", r = 254, g = 164, b = 159, cat = "P" }, { id = "P5", r = 238, g = 140, b = 62, cat = "P" }, { id = "P6", r = 95, g = 208, b = 167, cat = "P" }, { id = "P7", r = 235, g = 146, b = 112, cat = "P" }, { id = "P8", r = 240, g = 217, b = 88, cat = "P" }, { id = "P9", r = 217, g = 217, b = 217, cat = "P" }, { id = "P10", r = 217, g = 199, b = 234, cat = "P" }, { id = "P11", r = 243, g = 236, b = 201, cat = "P" }, { id = "P12", r = 230, g = 238, b = 201, cat = "P" }, { id = "P13", r = 170, g = 203, b = 239, cat = "P" }, { id = "P14", r = 51, g = 118, b = 128, cat = "P" }, { id = "P15", r = 102, g = 133, b = 117, cat = "P" }, { id = "P16", r = 254, g = 191, b = 69, cat = "P" }, { id = "P17", r = 254, g = 163, b = 36, cat = "P" }, { id = "P18", r = 254, g = 184, b = 159, cat = "P" }, { id = "P19", r = 255, g = 254, b = 236, cat = "P" }, { id = "P20", r = 254, g = 190, b = 207, cat = "P" }, { id = "P21", r = 236, g = 190, b = 191, cat = "P" }, { id = "P22", r = 228, g = 168, b = 159, cat = "P" }, { id = "P23", r = 165, g = 98, b = 104, cat = "P" },
  { id = "R1", r = 213, g = 13, b = 33, cat = "R" }, { id = "R2", r = 249, g = 47, b = 131, cat = "R" }, { id = "R3", r = 253, g = 131, b = 36, cat = "R" }, { id = "R4", r = 248, g = 236, b = 49, cat = "R" }, { id = "R5", r = 53, g = 199, b = 91, cat = "R" }, { id = "R6", r = 35, g = 136, b = 145, cat = "R" }, { id = "R7", r = 25, g = 119, b = 157, cat = "R" }, { id = "R8", r = 26, g = 96, b = 195, cat = "R" }, { id = "R9", r = 154, g = 86, b = 180, cat = "R" }, { id = "R10", r = 255, g = 219, b = 76, cat = "R" }, { id = "R11", r = 255, g = 235, b = 250, cat = "R" }, { id = "R12", r = 216, g = 213, b = 206, cat = "R" }, { id = "R13", r = 85, g = 81, b = 76, cat = "R" }, { id = "R14", r = 159, g = 228, b = 223, cat = "R" }, { id = "R15", r = 119, g = 206, b = 233, cat = "R" }, { id = "R16", r = 62, g = 207, b = 202, cat = "R" }, { id = "R17", r = 74, g = 134, b = 122, cat = "R" }, { id = "R18", r = 127, g = 205, b = 157, cat = "R" }, { id = "R19", r = 205, g = 229, b = 93, cat = "R" }, { id = "R20", r = 232, g = 199, b = 180, cat = "R" }, { id = "R21", r = 173, g = 111, b = 60, cat = "R" }, { id = "R22", r = 108, g = 55, b = 47, cat = "R" }, { id = "R23", r = 254, g = 184, b = 114, cat = "R" }, { id = "R24", r = 243, g = 193, b = 192, cat = "R" }, { id = "R25", r = 201, g = 103, b = 94, cat = "R" }, { id = "R26", r = 210, g = 147, b = 190, cat = "R" }, { id = "R27", r = 234, g = 140, b = 177, cat = "R" }, { id = "R28", r = 156, g = 135, b = 214, cat = "R" },
  { id = "T1", r = 255, g = 255, b = 255, cat = "T" }
}

MARD.FONT_3X5 = {
  ['0'] = { "111", "101", "101", "101", "111" }, ['1'] = { "010", "110", "010", "010", "111" }, ['2'] = { "111", "001", "111", "100", "111" }, ['3'] = { "111", "001", "111", "001", "111" }, ['4'] = { "101", "101", "111", "001", "001" }, ['5'] = { "111", "100", "111", "001", "111" }, ['6'] = { "111", "100", "111", "101", "111" }, ['7'] = { "111", "001", "010", "010", "010" }, ['8'] = { "111", "101", "111", "101", "111" }, ['9'] = { "111", "101", "111", "001", "111" }, ['A'] = { "010", "101", "111", "101", "101" }, ['B'] = { "110", "101", "110", "101", "110" }, ['C'] = { "011", "100", "100", "100", "011" }, ['D'] = { "110", "101", "101", "101", "110" }, ['E'] = { "111", "100", "110", "100", "111" }, ['F'] = { "111", "100", "110", "100", "100" }, ['G'] = { "011", "100", "101", "101", "011" }, ['H'] = { "101", "101", "111", "101", "101" }, ['M'] = { "101", "111", "101", "101", "101" }, ['P'] = { "111", "101", "111", "100", "100" }, ['R'] = { "110", "101", "110", "101", "101" }, ['T'] = { "111", "010", "010", "010", "010" },
}

local useFullMode = false
local currentCat = "All"
local selectedIndex = nil
local hoveredIndex = nil
local activeId = "-"
local scrollY = 0
local isDragging = false
local dragStartMouseY = 0
local dragStartScrollY = 0

local COLS = 5; local CELL_SIZE = 19; local GAP = 1; local MARGIN = 3; 
local SCROLL_TRACK_W = 6; local SCROLL_BAR_W = 4; local MAX_VIEWPORT_H = 220; 
local FIXED_VIEWPORT_W = MARGIN * 2 + COLS * CELL_SIZE + (COLS - 1) * GAP + SCROLL_TRACK_W + 2

local function getActiveColors()
  local list = {}
  for _, c in ipairs(MARD.COLORS) do
    if useFullMode or (c.cat ~= "P" and c.cat ~= "R" and c.cat ~= "T") then table.insert(list, c) end
  end
  return list
end

local function getCatOptions()
  return useFullMode and { "All", "A", "B", "C", "D", "E", "F", "G", "H", "M", "P", "R", "T" } or { "All", "A", "B", "C", "D", "E", "F", "G", "H", "M" }
end

function MARD.findNearestColor(r, g, b, colorList)
  local bestDist, bestColor = math.huge, colorList[1]
  for _, c in ipairs(colorList) do
    local dist = (c.r - r)^2 + (c.g - g)^2 + (c.b - b)^2
    if dist < bestDist then bestDist = dist; bestColor = c end
  end
  return bestColor
end

function MARD.drawPixelText(ctxOrImg, text, startX, startY, color, isCanvas)
  if isCanvas then ctxOrImg.color = color end
  local curX = startX
  for i = 1, #text do
    local char = string.upper(string.sub(text, i, i))
    local glyph = MARD.FONT_3X5[char]
    if glyph then
      for r = 1, 5 do
        local line = glyph[r]
        for c = 1, 3 do
          if string.sub(line, c, c) == "1" then 
            if isCanvas then ctxOrImg:fillRect(Rectangle(curX + (c - 1), startY + (r - 1), 1, 1))
            else ctxOrImg:drawPixel(curX + (c - 1), startY + (r - 1), color) end
          end
        end
      end
      curX = curX + 4
    else curX = curX + 3 end
  end
end

local currentList = {}
local function updateCurrentList()
  local baseColors = getActiveColors()
  currentList = {}
  if currentCat == "All" then currentList = baseColors else
    for _, item in ipairs(baseColors) do if item.cat == currentCat then table.insert(currentList, item) end end
  end
end

local function getTotalRows() return math.max(1, math.ceil(#currentList / COLS)) end
local function getTotalContentH() local r = getTotalRows(); return MARGIN * 2 + r * CELL_SIZE + (r - 1) * GAP end
local function getActiveViewportH() return math.min(getTotalContentH(), MAX_VIEWPORT_H) end
local function needsScroll() return getTotalContentH() > getActiveViewportH() end
local function getMaxScroll() return math.max(0, getTotalContentH() - getActiveViewportH()) end
local function clampScroll() if scrollY < 0 then scrollY = 0 end; local maxS = getMaxScroll(); if scrollY > maxS then scrollY = maxS end end
local function getContrastColor(r, g, b) return (0.299 * r + 0.587 * g + 0.114 * b > 140) and Color{ r = 15, g = 15, b = 15 } or Color{ r = 250, g = 250, b = 250 } end

local function getThumbGeometry()
  local viewH = getActiveViewportH(); local maxS = getMaxScroll(); local trackX = FIXED_VIEWPORT_W - SCROLL_TRACK_W - 1
  if maxS <= 0 then return trackX + 1, 1, SCROLL_BAR_W, viewH - 2, 1, viewH - 2 end
  local thumbH = math.max(18, math.floor((viewH - 2) * (viewH / getTotalContentH())))
  return trackX + 1, 1 + math.floor(((viewH - 2) - thumbH) * (scrollY / maxS)), SCROLL_BAR_W, thumbH, 1, viewH - 2
end

local function getIndexAt(x, y)
  if needsScroll() and x > FIXED_VIEWPORT_W - SCROLL_TRACK_W - 2 then return nil end
  local vY = y + scrollY - MARGIN; local vX = x - MARGIN
  local col = math.floor(vX / (CELL_SIZE + GAP)); local row = math.floor(vY / (CELL_SIZE + GAP))
  if col >= 0 and col < COLS and row >= 0 and row < getTotalRows() then
    if vX % (CELL_SIZE + GAP) < CELL_SIZE and vY % (CELL_SIZE + GAP) < CELL_SIZE then
      local idx = row * COLS + col + 1; if idx <= #currentList then return idx end
    end
  end
  return nil
end

local function updateHighlightIfActive(sprite)
  if not sprite then return end
  local hlLayer = nil
  for _, l in ipairs(sprite.layers) do if l.name == "MARD_Highlight_Mask" then hlLayer = l break end end
  if not hlLayer then return end 
  
  local tc = nil
  local currentModeColors = getActiveColors()
  for _, c in ipairs(currentModeColors) do if c.id == activeId then tc = c break end end
  if not tc then return end
  
  local originalLayer = app.activeLayer
  app.transaction("Update Highlight", function()
    hlLayer.isVisible = false 
    local flatImg = Image(sprite)
    hlLayer.isVisible = true 
    
    local cel = hlLayer:cel(app.activeFrame)
    if not cel then cel = sprite:newCel(hlLayer, app.activeFrame) end
    local img = Image(sprite.width, sprite.height, ColorMode.RGB)
    
    for it in flatImg:pixels() do
      if app.pixelColor.rgbaA(it()) > 0 then
        local pr, pg, pb = app.pixelColor.rgbaR(it()), app.pixelColor.rgbaG(it()), app.pixelColor.rgbaB(it())
        if pr == tc.r and pg == tc.g and pb == tc.b then 
          img:drawPixel(it.x, it.y, app.pixelColor.rgba(pr, pg, pb, 255))
        else 
          img:drawPixel(it.x, it.y, app.pixelColor.rgba(0, 0, 0, 180)) 
        end
      end
    end
    cel.image = img
  end)
  app.activeLayer = originalLayer
  app.refresh()
end

local createDialog
createDialog = function(savedPos)
  updateCurrentList()
  
  local dlg = Dialog{ title = "MARD Palette v4.2" }
  
  -- Top UI
  dlg:check{
    id = "full_mode",
    text = "Full Palette (273)",
    selected = useFullMode,
    onclick = function()
      useFullMode = dlg.data.full_mode
      if not useFullMode and (currentCat == "P" or currentCat == "R" or currentCat == "T") then currentCat = "All" end
      scrollY = 0; selectedIndex = nil; hoveredIndex = nil
      local bounds = dlg.bounds; dlg:close(); createDialog({ x = bounds.x, y = bounds.y, width = bounds.width })
    end
  }
  
  dlg:newrow()
  dlg:combobox{
    id = "cat_filter", options = getCatOptions(), option = currentCat,
    onchange = function()
      local nextCat = dlg.data.cat_filter; if nextCat == currentCat then return end
      currentCat = nextCat
      scrollY = 0; selectedIndex = nil; hoveredIndex = nil
      local bounds = dlg.bounds; dlg:close(); createDialog({ x = bounds.x, y = bounds.y, width = bounds.width })
    end
  }

  -- Canvas
  dlg:newrow()
  dlg:canvas{
    id = "palette_canvas", width = FIXED_VIEWPORT_W, height = getActiveViewportH(),
    onpaint = function(ev)
      local ctx = ev.context; local viewH = getActiveViewportH()
      ctx.color = Color{ r = 28, g = 28, b = 32 }; ctx:fillRect(Rectangle(0, 0, ev.width, ev.height))
      for i, item in ipairs(currentList) do
        local col = (i - 1) % COLS; local row = math.floor((i - 1) / COLS)
        local x = MARGIN + col * (CELL_SIZE + GAP); local y = MARGIN + row * (CELL_SIZE + GAP) - scrollY
        if y + CELL_SIZE >= 0 and y <= viewH then
          ctx.color = Color{ r = item.r, g = item.g, b = item.b }; ctx:fillRect(Rectangle(x, y, CELL_SIZE, CELL_SIZE))
          ctx.color = (i == selectedIndex) and Color{ r = 255, g = 255, b = 255 } or ((i == hoveredIndex) and Color{ r = 195, g = 195, b = 205 } or Color{ r = 38, g = 38, b = 44 })
          ctx:strokeRect(Rectangle(x, y, CELL_SIZE, CELL_SIZE))
          MARD.drawPixelText(ctx, item.id, x + math.floor((CELL_SIZE - (#item.id * 4 - 1)) / 2), y + math.floor((CELL_SIZE - 5) / 2), getContrastColor(item.r, item.g, item.b), true)
        end
      end
      if needsScroll() then
        ctx.color = Color{ r = 18, g = 18, b = 22 }; ctx:fillRect(Rectangle(FIXED_VIEWPORT_W - SCROLL_TRACK_W - 1, 0, SCROLL_TRACK_W, viewH))
        local tx, ty, tw, th = getThumbGeometry()
        ctx.color = Color{ r = 115, g = 135, b = 155 }; ctx:fillRect(Rectangle(tx, ty + 1, tw, th - 2)); ctx:fillRect(Rectangle(tx + 1, ty, tw - 2, th))
      end
    end,
    onwheel = function(ev) if needsScroll() and ev.deltaY ~= 0 then scrollY = scrollY + ((ev.deltaY > 0 and 1 or -1) * math.min(math.abs(ev.deltaY) * 4, CELL_SIZE * 1.2)); clampScroll(); dlg:repaint() end end,
    onmousedown = function(ev)
      if ev.button == MouseButton.LEFT then
        if needsScroll() and ev.x >= FIXED_VIEWPORT_W - SCROLL_TRACK_W - 2 then
          local _, ty, _, th = getThumbGeometry()
          if ev.y >= ty and ev.y <= ty + th then isDragging = true; dragStartMouseY = ev.y; dragStartScrollY = scrollY
          else scrollY = scrollY + (ev.y < ty and -getActiveViewportH() * 0.5 or getActiveViewportH() * 0.5); clampScroll(); dlg:repaint() end
          return
        end
        local idx = getIndexAt(ev.x, ev.y)
        if idx then 
          selectedIndex = idx; 
          activeId = currentList[idx].id; 
          app.fgColor = Color{ r = currentList[idx].r, g = currentList[idx].g, b = currentList[idx].b }; 
          dlg:modify{ id = "info_lbl", text = "Sel: " .. activeId .. "  |  Hov: " .. activeId }; 
          dlg:repaint() 
          updateHighlightIfActive(app.activeSprite)
        end
      end
    end,
    onmousemove = function(ev)
      if isDragging then local _, _, _, th, _, trackH = getThumbGeometry(); if trackH - th > 0 then scrollY = dragStartScrollY + (ev.y - dragStartMouseY) * (getMaxScroll() / (trackH - th)); clampScroll(); dlg:repaint() end return end
      local idx = getIndexAt(ev.x, ev.y)
      if idx ~= hoveredIndex then 
        hoveredIndex = idx
        dlg:modify{ id = "info_lbl", text = "Sel: " .. activeId .. "  |  Hov: " .. (idx and currentList[idx].id or "-") }
        dlg:repaint() 
      end
    end,
    onmouseup = function(ev) if isDragging then isDragging = false; dlg:repaint() end end
  }

  -- Compact Status Row
  dlg:separator()
  dlg:label{ id = "info_lbl", text = "Sel: " .. activeId .. "  |  Hov: -" }
  
  -- Tools Section (Vertically Stacked for slim UI)
  dlg:separator{ text = "Tools" }
  
  dlg:button{ id = "btn_convert", text = "Convert Image",
    onclick = function()
      if not app.activeSprite then return app.alert("Open a sprite first!") end
      local currentModeColors = getActiveColors()
      app.transaction("Convert to MARD Colors", function()
        for _, cel in ipairs(app.activeSprite.cels) do
          if cel.image.colorMode == ColorMode.RGB then
            local newImg = cel.image:clone()
            for it in newImg:pixels() do
              if app.pixelColor.rgbaA(it()) > 0 then
                local pr, pg, pb = app.pixelColor.rgbaR(it()), app.pixelColor.rgbaG(it()), app.pixelColor.rgbaB(it())
                local nc = MARD.findNearestColor(pr, pg, pb, currentModeColors)
                it(app.pixelColor.rgba(nc.r, nc.g, nc.b, app.pixelColor.rgbaA(it())))
              end
            end
            cel.image = newImg
          end
        end
      end)
      app.refresh()
    end
  }
  
  dlg:newrow()
  
  dlg:button{ id = "btn_highlight", text = "Toggle Highlight",
    onclick = function()
      local sprite = app.activeSprite
      if not sprite then return app.alert("Open a sprite first!") end
      
      local hlLayer = nil
      for _, l in ipairs(sprite.layers) do
        if l.name == "MARD_Highlight_Mask" then hlLayer = l break end
      end
      
      if hlLayer then
        app.transaction("Clear Highlight", function() sprite:deleteLayer(hlLayer) end)
        app.refresh()
        return
      end
      
      if activeId == "-" then return app.alert("Select a base color from the palette first!") end
      
      local originalLayer = app.activeLayer
      app.transaction("Create Highlight Mask", function()
        hlLayer = sprite:newLayer()
        hlLayer.name = "MARD_Highlight_Mask"
      end)
      app.activeLayer = originalLayer
      updateHighlightIfActive(sprite)
    end
  }

  dlg:newrow()
  
  dlg:button{ id = "btn_label", text = "Label Pixels",
    onclick = function()
      local sprite = app.activeSprite
      if not sprite then return app.alert("Open a sprite first!") end
      
      local currentModeColors = getActiveColors()
      local scale = 15 
      local newSprite = Sprite(sprite.width * scale, sprite.height * scale, ColorMode.RGB)
      
      app.transaction("Generate Pixel Labels", function()
        local flatImg = Image(sprite)
        local outImg = newSprite.cels[1].image
        outImg:clear()
        
        for y = 0, flatImg.height - 1 do
          for x = 0, flatImg.width - 1 do
            local px = flatImg:getPixel(x, y)
            if app.pixelColor.rgbaA(px) > 0 then
              local pr, pg, pb = app.pixelColor.rgbaR(px), app.pixelColor.rgbaG(px), app.pixelColor.rgbaB(px)
              local nc = MARD.findNearestColor(pr, pg, pb, currentModeColors)
              
              local c32 = app.pixelColor.rgba(nc.r, nc.g, nc.b, 255)
              local sx = x * scale
              local sy = y * scale
              for iy = 0, scale - 1 do
                for ix = 0, scale - 1 do
                  outImg:drawPixel(sx + ix, sy + iy, c32)
                end
              end
              
              local textColor = (0.299 * nc.r + 0.587 * nc.g + 0.114 * nc.b > 140) and app.pixelColor.rgba(15,15,15,255) or app.pixelColor.rgba(250,250,250,255)
              local textW = #(nc.id) * 4 - 1
              local tx = sx + math.floor((scale - textW) / 2)
              local ty = sy + math.floor((scale - 5) / 2)
              MARD.drawPixelText(outImg, nc.id, tx, ty, textColor, false)
            end
          end
        end
      end)
      app.command.FitScreen()
      app.refresh()
    end
  }

  dlg:show{ wait = false }
  if savedPos then dlg.bounds = Rectangle(savedPos.x, savedPos.y, savedPos.width, dlg.bounds.height) end
end

createDialog()