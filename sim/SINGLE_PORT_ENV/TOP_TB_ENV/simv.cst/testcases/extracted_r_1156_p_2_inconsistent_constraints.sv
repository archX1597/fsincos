class c_1156_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1156_2;
    c_1156_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0zz1zx1z1x0zxx00zz1x00111zz000xzzxxxxzzzzxxzzzxzxzzzzzxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
