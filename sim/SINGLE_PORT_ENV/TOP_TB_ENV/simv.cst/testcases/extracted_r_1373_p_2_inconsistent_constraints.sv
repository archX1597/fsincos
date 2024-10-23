class c_1373_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1373_2;
    c_1373_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxxz10xxx0x0xx11z0xz00000xz1zx0zzxzxxxzzzxxzzxzxxzzzxzzzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
