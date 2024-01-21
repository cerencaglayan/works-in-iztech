import java.util.Scanner;

public class Machine {

    private int number;
    Scanner scanner;

    static String[] peopleSaluted;

    /*
     * Constructor in Java
     * */
    public Machine(int number) {
        this.number = number;
        scanner = new Scanner(System.in);

    }

    @Override
    public String toString() {
        return "This is Machine class!";
    }

    public void printNumber() {
        System.out.println(number);
    }

    /*
     *  Taking an input in Java
     * */
    public void salute() {
        System.out.print("Name ? : \n");
        String name = scanner.nextLine();
        System.out.println("Name: " + name);
        peopleSaluted[peopleSaluted.length - 1] = name;
    }


}
