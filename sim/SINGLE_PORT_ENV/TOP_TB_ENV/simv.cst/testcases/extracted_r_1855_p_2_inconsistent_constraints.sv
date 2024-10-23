class c_1855_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1855_2;
    c_1855_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x001z1xz11xz0zxx00xx0xz0xzz1xzxzzxxzxxxxzzxxxxxzxzzxxxzxzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
