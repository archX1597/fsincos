class c_1900_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1900_2;
    c_1900_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz0xx0110xz0zz1x1x001xx011011zxxxzzzxzzzxzzzzzxzzzxzzxxzxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram