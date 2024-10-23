class c_1922_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1922_2;
    c_1922_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzxzz1z1001001zxxx01z0z1xz0zx01zxxxzxzxzzzzxzzzzzxzzxxxzxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
