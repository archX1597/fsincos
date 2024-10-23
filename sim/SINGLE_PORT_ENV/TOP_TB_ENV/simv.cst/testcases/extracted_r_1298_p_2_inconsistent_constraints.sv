class c_1298_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1298_2;
    c_1298_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010z11x1z0000xxzx1zxz00xxxzxxxxxxxzzxxzxzxzzxxxxxzzzzzxzzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
