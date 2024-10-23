class c_1792_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1792_2;
    c_1792_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzx100xxzxz1z1z0100zz1x0010x10zxxzxxzxxxzxzxxxxzxzzxxzxxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
