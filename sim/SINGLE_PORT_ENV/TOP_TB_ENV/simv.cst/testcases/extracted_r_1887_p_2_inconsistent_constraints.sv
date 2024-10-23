class c_1887_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1887_2;
    c_1887_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx01zxzzx1z01zz1z000100z10z1zx1xzzzxxxzzxxzxzzzxxxzxzxxxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
