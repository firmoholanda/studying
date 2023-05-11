// your task is to  implement two components using Styled Components in React.


import styled from "styled-components";

// Use console.log() and browser console for debugging
export const Tag = styled.div`
    display: inline-block;
    padding: 0.5rem;
    background-color: ${(props) => props.color || "red"};
    border-radius: ${(props) => props.borderRadius || "1em"};
`;

export const Icon = styled.div`
    filter: blur(6px);
    &:hover ${Tag} {
        filter: blur(0px);
    }
`;

