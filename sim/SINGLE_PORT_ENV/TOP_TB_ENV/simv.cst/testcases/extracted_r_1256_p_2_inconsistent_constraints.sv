class c_1256_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1256_2;
    c_1256_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z110z1x01zzzzx0z010110xx0xzxx1z1xxxxxzxzzxxxzzxzzzxxzzxxzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
