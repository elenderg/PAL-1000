function CalculateIncomeTaxWithNestedIfs(age, income){ 
    if (age < 60){ 
        if (income <= 250000){ 
            tax_percent = 0  
        }else if (income >= 250001 && income <= 500000){ 
            tax_percent = 0.1 
        }else if (income >= 500001 && income <= 1000000){ 
            tax_percent = 0.2 
        }else{ 
            tax_percent = 0.3 
        }  
    }else if (age >= 60 && age < 80){ 
        if (income <= 300000){ 
            tax_percent = 0 
        }else if (income >= 300001 && income <= 500000){ 
            tax_percent = 0.1 
        }else if (income >= 500001 && income <= 1000000){ 
            tax_percent = 0.2 
        }else{ 
            tax_percent = 0.3 
        }  
    }else{ 
        if(income <= 500000){ 
            tax_percent = 0 
        }else if (income >= 500001 && income <= 1000000){ 
            tax_percent = 0.2 
        }else{ 
            tax_percent = 0.3 
        }  
    } 
tax = tax_percent * income
return tax;
}


function CalculateIncomeTaxWithoutNestedIfs(age,income){
    if (age < 60){
        tax = CalculateYoungPeopleTax(income);
        return tax;
    }
    if (age >= 60 && age < 80){
        tax = CalculateMiddleAgePeopleTax(income);
        return tax;
    }
    if (income <= 500000){
        tax = 0;
        return tax;
    }
    if (income >= 500001 && income <= 1000000){
        tax = 0.2 * income;
        return tax;
    }
    tax = 0.3 * income;
    return tax;    
}

function CalculateYoungPeopleTax(income){
    if (income <= 250000){
        tax = 0;
        return tax;
    }
    if (income >= 250001 && income <= 500000){
        tax = 0.1 * income;
        return tax;
    }
    if (income >= 500001 && income <= 1000000){
        tax = 0.2 * income;
        return tax;
    }
    tax = 0.3 * income;
    return tax;
}

function CalculateMiddleAgePeopleTax(income){
    if (income <= 300000){
        tax = 0;
        return tax;
    }
    if (income >= 300001 && income <= 500000){
        tax = 0.1 * income;
        return tax;
    }
    if (income >= 500001 && income <= 1000000){
        tax = 0.2 * income;
        return tax;
    }
    tax = 0.3 * income;
    return tax;
}
