class c_1116_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1116_2;
    c_1116_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10x0100xxx101z111x0xz000xxzz0z1zzxzzxzzxxzzxxxzxzzzxzzzzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
