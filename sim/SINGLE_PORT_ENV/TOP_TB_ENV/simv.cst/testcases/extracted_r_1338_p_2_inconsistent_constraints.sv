class c_1338_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1338_2;
    c_1338_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z011zzxxzx01x00x10z0zxxx0xzxx0zxzzxxxxzzzxxxzzxxzxxxxzzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
