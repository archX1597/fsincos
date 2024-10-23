class c_1456_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1456_2;
    c_1456_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1z1x100xzxzz00xz01xxz01xxzxz1xzzxxxzxzxzxxzxzxzzzxzzxzxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
