class c_1031_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1031_2;
    c_1031_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00z00xx000101zx0zxx11zzz011zxxzxzzxxxxxzzxzxzxxxzzzzzxxzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
