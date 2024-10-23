class c_1347_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1347_2;
    c_1347_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxzzzxxz0011z0111z01110xzzxx10xxxzxxzxzzzxxxzxxzzxzxzxzzzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
