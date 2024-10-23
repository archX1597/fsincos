class c_1790_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1790_2;
    c_1790_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z11x011101z01z1x0zz00zzxxxzxx1zzxzxzxxzzzzxxxzzzxxxxzxzzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
