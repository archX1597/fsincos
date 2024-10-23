class c_1705_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1705_2;
    c_1705_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00z01z1z11z1z0zx000zz1x101xx1x1xxxzzxzzzzzzzxzzzzzxxxxzzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
