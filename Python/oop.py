
class Employee:
    amount=5
    number_of_employees=0
    
    def __init__(self,name,surname,no):
        self.name=name
        self.surname = surname
        self.no=no
    
        Employee.number_of_employees+=1#to get rid of overriding issues.
        #if we use self, it count 1 for every self. So we can not count all of 
        #them while they just count themselves.
    
    def __str__(self):
        return "> "+self.name+" "+self.surname+", "+str(self.no)
    
    def __repr__(self):
        #for debugging 
        return f"Employee({self.name},{self.surname},{self.no})"
    
    def __add__(self,other):
        #addition for objects
        #ex: emp_1+emp_2 = sum of nos'
        return self.no+other.no
    
    def __len__(self):
        return len(self.password)
    
    @property
    def password(self):
        #using as  emp_1.get_password with @property
        #bir özellik eklenmiş olur.
        self.password=self.name+self.surname
        return self.password
    
    @password.setter
    def password(self,password):
        self.password=password
        
    @password.deleter
    def password(self):
        self.password=None
    
    def wait(self):
        self.no=self.no*3*self.amount 
        
    @classmethod
    def set_amount(cls,amon):
        #working class instead of instance.
        #so that we can change all of objects's attributes
        cls.amount=amon 
        

    @classmethod
    def from_string(cls,string):
        name,surname,no = string.split("-")
        return cls(name,surname,no)
        
    
class Developer(Employee):
    amount=5.1
    def __init__(self,name,surname,no,prog):
        super().__init__(name, surname, no)
        self.prog=prog        
        
        
class Manager(Employee):
    def __init__(self,name,surname,no,employees=None)  :
        super().__init__(name, surname, no)      
        if employees==None:
            self.employees=[]
        else:
            self.employees=employees
        

    def add_emp(self,emp):
        if emp not in self.employees:
            self.employees.append(emp)
        else:
            print("No")

    def remove_emp(self,emp):
        if emp in self.employees:
            self.employees.remove(emp)

        else:
            raise   ValueError("Employee doesn't belong to manager.")
            
    def show_employees(self):
        for emp in self.employees:print(str(emp))
        
#Accessing methods/attiributes
emp_1 = Employee("Ceren","Çağlayan",546)
emp_1.name
emp_2 = Employee("Jolene","Çağlayan",549)

# emp_1.__dict__ gives a dict version of att. : {'name': 'Ceren', 'surname': 'Çağlayan', 'no': 3276, 'password': 'CerenÇağlayan'}
# emp_1.wait() = Employee.wait(emp_1) . emp_1 defines "self" here.

#isinstance 1 2deki sınıftan  oluştu mu
#issubclass 1 sınıfı 2 sınıfından mı türedi

dev_1 = Developer("f","g", 89,"python")
print(dev_1.no)
dev_1.wait()
print(dev_1.no)

man_1 = Manager("mümtaz", "taylan", 88)
man_1.add_emp(emp_1)
man_1.add_emp(emp_2)
man_1.show_employees()
man_1.add_emp(emp_1)
