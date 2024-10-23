class c_1242_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1242_2;
    c_1242_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110zzz0z1z1z100xx0z1x11zzx1zzzzzzxzxxxxxxzxzxzzzzzzxxzzzxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
