class c_1253_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1253_2;
    c_1253_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zzx0011xxzz00z1xz001xx011x1z11zxzzxzxxzxzzzzzxxzzxxzxzxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram