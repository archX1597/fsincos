class c_1614_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1614_2;
    c_1614_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxzz111zzzxx0101zz1z00x000xxz01xzzzzxxxxzzxzxxxxxzzzzxxxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram