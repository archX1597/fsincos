class c_1176_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1176_2;
    c_1176_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz1z1z0xz00x1xx0z1z1z11z1xz1xz0zxzzxzzzzxxxxxzzzzzxzzzzxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
