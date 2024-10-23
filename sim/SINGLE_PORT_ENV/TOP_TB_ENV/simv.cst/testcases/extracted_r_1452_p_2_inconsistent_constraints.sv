class c_1452_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1452_2;
    c_1452_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzz0zx0z10xz0110000x1xx010z01zzxxxxxzzzzzzzxxxzxxzxzzzzzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
