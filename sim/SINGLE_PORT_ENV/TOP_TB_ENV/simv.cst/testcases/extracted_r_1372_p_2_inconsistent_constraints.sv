class c_1372_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1372_2;
    c_1372_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10z11xxzzxzxz1z1zzx00zx1xz11x1xzzxxzxzzzzxxzxzxzzzzxzzxxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
