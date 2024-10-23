class c_1294_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1294_2;
    c_1294_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z11xxz00zzx1xx0x1z0zx1xz1xxzx0zzxxxzxzxxxzxzxzxzzzzzxxxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
