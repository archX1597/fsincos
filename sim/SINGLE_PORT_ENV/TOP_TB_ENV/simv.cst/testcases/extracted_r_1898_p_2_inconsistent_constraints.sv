class c_1898_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1898_2;
    c_1898_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011x001x000z0z1z11xx0z111z110001zzxxxzxzzzxzxxxzzxzzzzzzzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
