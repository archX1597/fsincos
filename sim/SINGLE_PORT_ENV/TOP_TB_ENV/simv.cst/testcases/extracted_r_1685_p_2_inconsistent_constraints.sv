class c_1685_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1685_2;
    c_1685_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zz0zzx1zx0x01zx1zzx0zzzzz1xxx1xxzzzzxzxzxzzxzzxxzxxzzzzxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
