class c_1530_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1530_2;
    c_1530_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z01zx11xzzx001z0zxz11zz011x1xxzxzzxxxzxzxxzxxxxzxxzzzxxzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
