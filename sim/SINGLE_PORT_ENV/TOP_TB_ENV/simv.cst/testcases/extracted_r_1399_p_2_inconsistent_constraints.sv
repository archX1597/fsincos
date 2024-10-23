class c_1399_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1399_2;
    c_1399_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz001x11xz0z10xx00zz1zx100z00zzxxzxzzzxzzzxzzxxxzzxxxxxxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram