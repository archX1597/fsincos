class c_1188_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1188_2;
    c_1188_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz1z1xzzz1z0z0zx1zxx0zxx0110zx1zxzxxxxxzxxxxxzzxxzzzzxzxxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
