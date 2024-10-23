class c_1740_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1740_2;
    c_1740_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xzzxzxz0x1x1zzzz1x011z00x11z01xxzxzxxxzxxxzzzxxxzxzzzzzxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
