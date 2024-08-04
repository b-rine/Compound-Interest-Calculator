package me.briannguyen.compoundinterestproject;

public class Utils {

    public static double calculateCompoundInterest(double principal, double interest,
                                                   int years, int compoundingPeriod) {
        double result = principal * Math.pow((1 + interest / compoundingPeriod),
                        compoundingPeriod * years);
        return Math.round(result * 100.0) / 100.0;
    }
}
