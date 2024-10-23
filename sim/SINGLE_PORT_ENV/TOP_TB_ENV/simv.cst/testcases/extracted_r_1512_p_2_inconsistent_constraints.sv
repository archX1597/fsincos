class c_1512_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1512_2;
    c_1512_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1zxz0x1xx01xz000zz11z00xz0xx1xxzzzzxzzzzxxxxxxzxzxxzxxxxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
