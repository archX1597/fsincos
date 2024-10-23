class c_1585_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1585_2;
    c_1585_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxxzxxz0101x1x00zxz0z1100xxz10xxzzxxzxzxzxxzxxxxzxzxzzzzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
