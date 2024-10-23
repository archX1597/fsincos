class c_1752_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1752_2;
    c_1752_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx110xzx1xz1x0z0z0zz1zxzz0zzx11xxxzxzxxxzxzzzxzxxzxxxxxzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
