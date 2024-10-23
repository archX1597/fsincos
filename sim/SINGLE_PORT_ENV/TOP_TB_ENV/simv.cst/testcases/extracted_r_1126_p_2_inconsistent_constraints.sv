class c_1126_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1126_2;
    c_1126_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0zx0zxx11xx1xz1010xx0xxzx0zx0zzxzxzzxxxxxzzxxzxzxxxxxxzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
