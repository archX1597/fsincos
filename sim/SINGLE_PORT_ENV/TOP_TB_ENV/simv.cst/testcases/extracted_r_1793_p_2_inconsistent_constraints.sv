class c_1793_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1793_2;
    c_1793_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z011000111x0x01zz111z01zz1x0xxxzxzxzzxxxzxzxxzxxzzzzzxxzzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
