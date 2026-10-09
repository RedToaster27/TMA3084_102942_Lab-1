import 'dart:io';

void main() {
    print('Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD');

    String continueOrder = 'yes';

    while (continueOrder.toLowerCase() == 'yes') {
        print('\nPlease enter your pizza size (small, medium, or large):');
        String size = stdin.readLineSync()!.toLowerCase().trim();

        print('How many pizzas do you want of $size?');
        int quantity = int.parse(stdin.readLineSync()!);

        int price;

        switch (size) {
            case 'small':
              price = 5;
              break;
            case 'medium':
              price = 7;
              break;
            case 'large':
              price = 10;
              break;
            default:
              print('Invalid piza size. Please try again.');
              continue; 
        }

        if (quantity <= 0){
            print('Invalid quantity. Please enter a number greater than zero');
            continue;
        }

        int totalPayment = price * quantity;

        print('Your Total Payment is: \$$totalPayment');

        print('\nDo you want to order again? (yes/no):');
        continueOrder = stdin.readLineSync()!.toLowerCase().trim();
    }
    
    print('Thank you for your order!');
}