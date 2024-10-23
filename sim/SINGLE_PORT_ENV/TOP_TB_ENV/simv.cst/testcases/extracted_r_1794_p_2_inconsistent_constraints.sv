class c_1794_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1794_2;
    c_1794_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1011zz11x01010zx11zzx0z1x1xx0xxzzxxxzxxxxxzxxxzzxzzzxzxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
