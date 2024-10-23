class c_1715_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1715_2;
    c_1715_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0001zxx111x0z1xx011z01zzz101x0x0zzzxzxzxzxxzzxzxxzxzzxxzzxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
