class c_1137_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1137_2;
    c_1137_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xz1xxx0zxx11x01xxzxz0z1zx1zzz0zzxzxzzxxxxxzzxxzxxzzzzxzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
