class c_1506_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1506_2;
    c_1506_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z11z01zzzxzz0x1x101xxx1xz10x110zzzzxzzxxzxzzxzxzxzzxzxxxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
