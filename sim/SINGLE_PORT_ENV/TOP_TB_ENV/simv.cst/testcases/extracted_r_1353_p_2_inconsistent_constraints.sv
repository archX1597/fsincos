class c_1353_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1353_2;
    c_1353_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx00z0zzzzx1xx11010zx00xz01z00zzxzzzxzzxzxzzxxzxxxxxxzxxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
