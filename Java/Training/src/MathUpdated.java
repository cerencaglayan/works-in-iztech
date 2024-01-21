
/*
 * Updated version of some Math functions which controls if number is even, odd.. or more.
 *
 * */

import java.util.ArrayList;
import java.util.Scanner;

public class MathUpdated {

    private Math math;
    private Scanner scanner;


    public static double average(ArrayList<Double> arrayList) {
        double sum = 0;
        for (Double element : arrayList) {
            sum += element;
        }
        return sum / arrayList.size();

    }

    public static boolean isEven(int number) {
        return number % 2 == 0;
    }

    public static boolean isOdd(int number) {
        return number % 2 != 0;
    }


    public static double compute(String string) {
        double number = 0;



        return number;
    }






}
