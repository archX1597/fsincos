class c_1925_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1925_2;
    c_1925_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zzxz010z11z10xx1z0x1x0x110xzz1xxxxxxxxxxzxzxxxzxzzzzxzxxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
