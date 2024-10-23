class c_1684_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1684_2;
    c_1684_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0z111zxx0001zzx11zzxz0000zx001xxxzzxxxzzxxzxzxxzxxzzxzxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
