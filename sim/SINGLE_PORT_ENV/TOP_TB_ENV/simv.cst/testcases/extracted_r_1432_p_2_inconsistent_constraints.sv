class c_1432_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1432_2;
    c_1432_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xxx0zx0zz1zzx11x00x1110x1z0x11xzzzzzxzxzzxxzzxxxzzxxxzxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
