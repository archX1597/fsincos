class c_1160_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1160_2;
    c_1160_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz01xz11z01x00xx11001x1zzz011zxzxxxzxxxzzzxzxzxzzxxxzzxzxxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
