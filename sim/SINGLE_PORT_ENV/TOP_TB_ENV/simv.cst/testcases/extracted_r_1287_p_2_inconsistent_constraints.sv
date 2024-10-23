class c_1287_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1287_2;
    c_1287_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz110zzzxx1010xz1zzx1zx00001zz0xxzzxxzxxxxxxzzzzxxzxxxxzzzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
