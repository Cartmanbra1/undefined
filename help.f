        //Convert to decimal
        if (answer == 4) {
            //defining variables.
            int base, number, number1, decimal_number = 0, remainer, count = 0, counter = 0, count2 = 0, check_number;
            //user input base
            printf("Enter base:\n");
            scanf("%d", &base);
            //making sure the base is between 2 and 9, if it isn't user gets sent to the main menu
            if (base > 9 || base < 2) {
                printf("Invalid Base\n");
                continue;
            }
            //user input number
            printf("Enter a number:\n");
            scanf("%d", &number);
            //using number1 to find how many digits number has
            number1 = number;
            //a while loop to count number's digits
            while (number1 > 0) {
                //counter + 1
                ++counter;
                //getting number's rightmost digit
                check_number = number1 % 10;
                //checking number's rightmost digit to see if its in the base's range
                if (check_number >= base || check_number < 0){
                    printf("Invalid character %d in base %d \n", check_number, base);
                    break;
                } else {
                    //count2 used to prevent the code from continuing if one of number's digits isn't allowed. count2 + 1
                    ++count2;
                }
                //dividing number1 by 10 and continuing to count.
                number1 /= 10;
            }
            //a while loop to calculate the decimal number
            while (count < counter && count2 == counter) {
                //finding the rightmost digit of number, aka the remainer
                remainer = number % 10;
                // using the pow function to do: base^count * (rightmost digit of number) + (former value of decimal_number)
                decimal_number = pow(base, count) * remainer + decimal_number;
                //dividing number by 10
                number /= 10;
                //count + 1
                count++;

            }
            //using count2 to check whether the second loop happened, if not we don't print.
            if (count2 == counter) {
                printf("\nThe converted number is %d\n", decimal_number);
            }
        }
