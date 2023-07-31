import tkinter as tk
from tkinter import messagebox
from sudoku_solver import solve_sudoku, print_board, test_board

class SudokuSolver(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("Sudoku Solver")
        self.configure(bg='blue')  # Set background color

        # Create a frame to hold the Sudoku grid
        self.grid_frame = tk.Frame(self, bg='black')
        self.grid_frame.grid(row=0, column=0, padx=10, pady=10, sticky='nsew')

        # Create a 9x9 grid of Entry widgets with grid lines
        self.entries = []
        for i in range(9):
            row_entries = []
            for j in range(9):
                padx = 2 if j % 3 == 0 else 1
                pady = 2 if i % 3 == 0 else 1
                entry = tk.Entry(self.grid_frame, width=3, justify='center', font=('Arial', 12, 'bold'))
                entry.grid(row=i*2, column=j*2, padx=.5, pady=.5, sticky='nsew')
                entry.config(validate='key', validatecommand=(entry.register(self.validate_entry), '%P'))
                row_entries.append(entry)
            self.entries.append(row_entries)

        # Draw thick black lines between cells
        for i in range(5, 12, 6):
            line = tk.Frame(self.grid_frame, bg='black', height=4)
            line.grid(row=i, column=0, columnspan=18, sticky='ew')
            line = tk.Frame(self.grid_frame, bg='black', width=4)
            line.grid(row=0, column=i, rowspan=18, sticky='ns')

        # Configure row and column weights to make the grid expand with the window
        for i in range(9):
            self.grid_frame.grid_rowconfigure(i*2, weight=1)
            self.grid_frame.grid_columnconfigure(i*2, weight=1)

        # Add a Solve button
        self.solve_button = tk.Button(self, text="Solve", command=self.solve)
        self.solve_button.grid(row=1, column=0, columnspan=9, pady=10)

        # Add a Load button
        self.load_button = tk.Button(self, text="Load", command=self.load_board)
        self.load_button.grid(row=2, column=0, columnspan=9, pady=10)

        # Set focus to the top-left entry
        self.entries[0][0].focus_set()

        # Add padding to the window to accommodate the buttons and grid
        self.grid_frame.grid(padx=10, pady=10)
        self.solve_button.grid(pady=10)
        self.load_button.grid(pady=10)

        # Configure row and column weights for the main window
        self.rowconfigure(1, weight=1)
        self.columnconfigure(0, weight=1)
        
        # Adjust window size to fit the Sudoku grid
        self.update()
 
    #Functions
    def resize_window(self, event):
        #Adjust window size to fit grid
        width = self.grid_frame.winfo_width() + 20
        height = self.grid_frame.winfo_height() + self.solve_button.winfo_height() + self.load_button.winfo_height() + 30
        self.geometry(f"{width}x{height}")

    def validate_entry(self, value):
        if value in ('', '1', '2', '3', '4', '5', '6', '7', '8', '9'):
            return True
        else:
            return False
        
    def load_board(self):
        # Sample board
        board = [
            [5, 3, 0, 0, 7, 0, 0, 0, 0],
            [6, 0, 0, 1, 9, 5, 0, 0, 0],
            [0, 9, 8, 0, 0, 0, 0, 6, 0],
            [8, 0, 0, 0, 6, 0, 0, 0, 3],
            [4, 0, 0, 8, 0, 3, 0, 0, 1],
            [7, 0, 0, 0, 2, 0, 0, 0, 6],
            [0, 6, 0, 0, 0, 0, 2, 8, 0],
            [0, 0, 0, 4, 1, 9, 0, 0, 5],
            [0, 0, 0, 0, 8, 0, 0, 7, 9]
        ]

        for i in range(9):
            for j in range(9):
                value = str(board[i][j]) if board[i][j] != 0 else ''
                self.entries[i][j].delete(0, tk.END)
                self.entries[i][j].insert(0, value)

    def solve(self):
        board = []
        for i in range(9):
            row = []
            for j in range(9):
                try:
                    val = int(self.entries[i][j].get())
                    row.append(val if val in range(1, 10) else 0)
                except ValueError:
                    row.append(0)
            board.append(row)
        if solve_sudoku(board):
            for i in range(9):
                for j in range(9):
                    self.entries[i][j].delete(0, tk.END)
                    self.entries[i][j].insert(tk.END, board[i][j])
        else:
            messagebox.showerror("Error", "No solution exists")

if __name__ == "__main__":
    app = SudokuSolver()
    app.mainloop()

