class Student:
    
    def __init__(self,name):
        self.name = name 
        self.grades = []
     
    def set_grades(self,grades):
        for element in grades:
            self.grades.append(element)
    def calc_average(self):
        mid = sum(self.grades[:2])*(1/5)
        final = self.grades[2]*(2/5)
        hw = sum(self.grades[3:])*(1/10)
        note = mid+final+hw
        return note