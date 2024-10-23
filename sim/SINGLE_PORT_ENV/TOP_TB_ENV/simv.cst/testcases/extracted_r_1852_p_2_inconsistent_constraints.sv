class c_1852_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1852_2;
    c_1852_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zzx010zx1z0011z11zz11x1zz01z01xzxxxzzxxxzzxzzzxzzxzzzxzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
