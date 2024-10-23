class c_1115_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1115_2;
    c_1115_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx0x0z0xx11xx1zxz0101z01x0111zxxzxzzxzzzzxzxzzzzxzxzzzxxzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
