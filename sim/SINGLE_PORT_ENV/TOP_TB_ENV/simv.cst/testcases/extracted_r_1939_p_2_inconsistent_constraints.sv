class c_1939_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1939_2;
    c_1939_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00xxx0zxx0xz0z0xxx101x1xx00xzzzzzxzzxzzxzzxxzxzxzxzzzxzzxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
