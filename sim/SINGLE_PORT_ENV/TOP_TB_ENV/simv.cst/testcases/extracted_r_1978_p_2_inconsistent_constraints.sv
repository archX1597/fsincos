class c_1978_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1978_2;
    c_1978_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz1z0z0zx1x0xz1000zxx101zx110xzxxxxzxxxxzxzxxzzzxxzxxxxxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
